# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
[
    {title: "Learning Ruby the hard way", body: "The most read ruby article"},
    {title: "Learning Java the hard way", body: "The most read Java article"},
    {title: "Learning Rails the hard way", body: "The most read Rails article"},
    {title: "Learning JavaScript the hard way", body: "The most read JavaScript article"},
    {title: "Learning SQL the hard way", body: "The most read SQL article"},
    {title: "Learning Python the hard way", body: "The most read Python article"},
    {title: "Learning Golang the hard way", body: "The most read Golang article"},
    {title: "Learning React the hard way", body: "The most read React article"},
    {title: "Learning TypeScript the hard way", body: "The most read TypeScript article"},
    {title: "Learning C++ the hard way", body: "The most read C++ article"}
].each { |article| Article.create(article) }

