from django.shortcuts import render
from django.core.paginator import Paginator
from django.http import HttpResponse, Http404 
from qa.models import *

def get_page(request):
    try:
        page = int(request.GET.get('page'))
    except ValueError:
        page = 1
    questions = Question.objects.new()
    paginator = Paginator(questions, 10)
    page = paginator.page(page)
    return render(request, 'list.html',
                              {'title': 'New',
                               'paginator': paginator,
                               'questions': page.object_list,                                                                   'page': page, 
                               }
                 )
def get_popular(request):
    try:
        page = int(request.GET.get('page'))
    except ValueError:
        page = 1
    questions = Question.objects.popular()
    paginator = Paginator(questions, 10)
    page = paginator.page(page)
    return render(request, 'list.html',
                              {'title': 'Pop',
                               'paginator': paginator,
                               'questions': page.object_list,                                                                   'page': page, 
                               }
                 )
   
def get_question(request, num):
    try:
        q = Question.objects.get(id=num)
    except Question.DoesNotExist:
        raise Http404
    return render(request, 'question.html', {'question': q,})

     

def test(request, *args, **kwargs):
    return HttpResponse('OK')










# Create your views here.
