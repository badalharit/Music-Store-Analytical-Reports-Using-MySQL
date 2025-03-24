from django.shortcuts import render
from .models import TopGenres, MonthlyRevenue, CustomerLifetimeValue

def top_genres_view(request):
    top_genres = TopGenres.objects.all()
    return render(request, 'analytics/top_genres.html', {'top_genres': top_genres})

def monthly_revenue_view(request):
    monthly_revenue = MonthlyRevenue.objects.all()
    return render(request, 'analytics/monthly_revenue.html', {'monthly_revenue': monthly_revenue})

def customer_lifetime_value_view(request):
    customer_lifetime_values = CustomerLifetimeValue.objects.all()
    return render(request, 'analytics/customer_lifetime_value.html', {'customer_lifetime_values': customer_lifetime_values})
