class TasksController < ApplicationController

    def Index
        @tasks = Task.all
    end
end
