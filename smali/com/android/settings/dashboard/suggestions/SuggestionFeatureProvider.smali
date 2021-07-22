.class public interface abstract Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;
.super Ljava/lang/Object;
.source "SuggestionFeatureProvider.java"


# virtual methods
.method public abstract getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
.end method

.method public abstract getSuggestionServiceComponent()Landroid/content/ComponentName;
.end method

.method public abstract isSuggestionComplete(Landroid/content/Context;Landroid/content/ComponentName;)Z
.end method
