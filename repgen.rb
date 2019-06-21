require 'yaml'

input = ARGV[0]

report = YAML.load_file(input)
reportTxt = ""

if report.has_key?("author") then
    reportTxt += "学籍番号・指名: " + String(report["author"]) + "\n\n"
end

if report.has_key?("practice") then
    practices = report["practice"]
    practices.each.with_index(1) do |practice, index|
        reportTxt += "演習問題"
        if practice.has_key?("number") then
            reportTxt += String(practice["number"])
        else
            reportTxt += index
        end
        reportTxt += "\n\n"

        if practice.has_key?("source") then
            source = practice["source"]
            reportTxt += "ソースコード:\n\n"
            if source.kind_of?(String) then
                reportTxt += source
            elsif source.has_key?("file") then
                reportTxt += "--- from here\n"
                reportTxt += File.read(source["file"])
                reportTxt += "\n--- to here"
            end
            reportTxt += "\n\n"
        end

        if practice.has_key?("result") then
            result = practice["result"]
            reportTxt += "実行結果:\n\n"
            if result.kind_of?(String) then
                reportTxt += result
            elsif result.has_key?("file") then
                reportTxt += "--- from here\n"
                reportTxt += File.read(result["file"])
                reportTxt += "\n--- to here"
            end
            reportTxt += "\n\n"
        end

        if practice.has_key?("consideration") then
            consideration = practice["consideration"]
            reportTxt += "考察:\n\n"
            if consideration.kind_of?(String) then
                reportTxt += consideration
            elsif consideration.has_key?("file") then
                reportTxt += File.read(consideration["file"])
            end
            reportTxt += "\n\n"
        end
    end
end

if report.has_key?("consideration") then
    consideration = report["consideration"]
    reportTxt += "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n"
    reportTxt += "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n\n"
    reportTxt += "考察:\n\n"
    if consideration.kind_of?(String) then
        reportTxt += consideration
    elsif consideration.has_key?("file") then
        reportTxt += File.read(consideration["file"])
    end
    reportTxt += "\n\n"
end

print reportTxt
