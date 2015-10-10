Then(/^the experience chart is present$/) do
  expect(page).to have_content('Experience')
  within '#experience_chart' do
    expect(page).to have_content('Years at Bendyworks plus partial prior experience')
  end
end

Then(/^the salary history chart is present$/) do
  expect(page).to have_content('Salary History')
  within '#history_chart' do
    expect(page).to have_content('2015')
  end
end

Then(/^their salary history chart is present$/) do
  expect(page).to have_content("Salary History Chart")
  within '#history_chart' do
    expect(page).to have_content('2015')
  end
end

Then(/^current employment status is checked$/) do
  current_checkbox = find('#employment_current')
  expect(current_checkbox).to be_checked
end
