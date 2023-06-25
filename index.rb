require "yaml"

# Load data.yml file
data = YAML.load_file('data.yml')

puts <<~HTML_TOP
<!DOCTYPE html>
<html>
<head>
    <title>Image Grid</title>
    <style>
        .grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            grid-gap: 10px;
        }
        
        .cell {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        
        .cell a {
            text-decoration: none;
            color: inherit;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="grid">
HTML_TOP

data.each do |item|
  puts <<~HTML_ITEM
        <div class="cell">
          <a href="#{item["link"]}">
              <img src="#{item["image"]}" alt="#{item["title"]} width="100%">
              <span>#{item["title"]}</span>
          </a>
        </div>
        HTML_ITEM
end

puts <<~HTML_BOTTOM
    </div>
</body>
HTML_BOTTOM
