require_relative "../markdown_processor.rb"

describe MarkdownProcessor do
  
  it 'should remove # character' do
    x = MarkdownProcessor.convert_to_h1('# Derp')
    
    expect(x).not_to include('#')
  end
  
  it 'should remove extra spaces' do
    x = MarkdownProcessor.convert_to_h1('# Derp')
    
    expect(x).not_to include(' ')
  end
  
  it 'should return false if no # precedes string' do
    x = MarkdownProcessor.convert_to_h1(' Derp')
    
    expect(x).to eql(false)
  end
  
end