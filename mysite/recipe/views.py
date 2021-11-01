from django.shortcuts import render
from django.http import HttpResponse

recipe_cards = [
	{
		'name': 'chocolate brownie',
	}, 
	{
		'name': 'cake',
	}


	]

# Create your views here.
def home(request):
	var = {
	'cards': recipe_cards,
	'title': 'Home'
	}
	return render(request,'recipe/home.html', var)

def contact(request):
	return render(request,'recipe/contact.html', {'title' : 'Contact'})

def about(request):
	return render(request,'recipe/about.html', {'title' : 'About'})
