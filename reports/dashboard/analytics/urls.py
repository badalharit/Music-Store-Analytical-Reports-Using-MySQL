from django.urls import path
from .views import top_genres_view, monthly_revenue_view, customer_lifetime_value_view

urlpatterns = [
    path('top-genres/', top_genres_view, name='top_genres'),
    path('monthly-revenue/', monthly_revenue_view, name='monthly_revenue'),
    path('customer-lifetime-value/', customer_lifetime_value_view, name='customer_lifetime_value'),
]
