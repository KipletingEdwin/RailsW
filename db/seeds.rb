

puts "Seeding..."

Speaker.create( Name: 'James', Role: 'Senior Software Enginner', Company: 'Goggle', Description: 'Three years experience', Github: 'hhhtpos',
 LinkedIn: 'htsskks', Twitter: 'hdjkkakak', Topic: 'Role of Raikls', Time: '16:30 - 17:30', Date: '6th October 2023', Venue: 'Track 1', Topic2: 'Rails', 
 Time2: '16:30 - 17:00', Date2: '18:00 - 18:30', Venue2: 'Track 1' )





 image1 = ActiveStorage::Blob.create_after_upload!(
  io: File.open(Rails.root.join('app/assets/images/speaker_images/a-chang.jpeg')),
  filename: 'a-chang.jpeg',
  content_type: 'image/jpeg'
)

image2 = ActiveStorage::Blob.create_after_upload!(
  io: File.open(Rails.root.join('app/assets/images/speaker_images/a-rojas.jpeg')),
  filename: 'a-rojas.jpeg',
  content_type: 'image/png'
)


 puts "📃 Done Seeding ..."
