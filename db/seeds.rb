3.times do |project|
    Project.create!(
    titel: "Project titel #{project}",
    body:"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.
     The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, 
     as opposed to using 'Content here, Many desktop publishing packages and web page editors now 
     use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many 
     web sites still in their infancy. Various versions have evolved over the years, sometimes by accident,  
     sometimes on purpose (injected humour and the like). ",
    )
end  
puts "3 projects created"
5.times do |bug|
    Bug.create!(
    titel: "Bug #{bug}",
    body:"hello i am a bug in thr project ",
    project_id: Project.last.id
    )
end  
puts "5 bugs created"