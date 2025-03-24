from django.db import models

class TopGenres(models.Model):
    genre_name = models.CharField(max_length=255)
    total_purchases = models.DecimalField(max_digits=10, decimal_places=2)

    class Meta:
        managed = False
        db_table = 'vw_top_genres'

class MonthlyRevenue(models.Model):
    month = models.CharField(max_length=50)
    revenue = models.DecimalField(max_digits=10, decimal_places=2)

    class Meta:
        managed = False
        db_table = 'vw_monthly_revenue'

class CustomerLifetimeValue(models.Model):
    customer_name = models.CharField(max_length=255)
    lifetime_value = models.DecimalField(max_digits=10, decimal_places=2)

    class Meta:
        managed = False
        db_table = 'vw_customer_lifetime_value'
