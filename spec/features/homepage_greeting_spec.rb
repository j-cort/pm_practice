feature 'Hello World Page' do
  scenario 'greets user with Hello World!' do
    visit ('/')
    expect(page).to have_content 'Hello World!'
  end
end