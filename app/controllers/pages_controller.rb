class PagesController < ApplicationController
  def home
    if theme_params[:theme].present?
      cookies.permanent[:theme] = theme_params[:theme]
    elsif cookies.permanent[:theme].empty?
      cookies.permanent[:theme] = 'cerulean'
    end
  end

  private

  def theme_params
    params.permit(:theme)
  end
end