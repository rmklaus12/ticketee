# frozen_string_literal: true

Rails.application.routes.draw do
  root 'projects#index'

  # define the new_project_path as a method by defining a route to a resource (:projects).
  # a resource is a collection of objectst hat all belong in a common location (projects, users, or tickets)
  # This resource route defines the routes to seven RESTful actions in a controller (in this case ProjectsController)
  resources :projects
end
