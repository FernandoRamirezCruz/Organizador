# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, Task, owner_id: user.id #se dice que puedes hacer todo con la tarea y una relacion de depencia
    can :read, Task, participants: { id: user.id } #se dice que puedes leer la tarea si eres un participante
  end
end
