.class public interface abstract Lcom/android/settings/dashboard/DashboardFeatureProvider;
.super Ljava/lang/Object;
.source "DashboardFeatureProvider.java"


# virtual methods
.method public abstract bindPreferenceToTileAndGetObservers(Landroidx/fragment/app/FragmentActivity;ZILandroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "ZI",
            "Landroidx/preference/Preference;",
            "Lcom/android/settingslib/drawer/Tile;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/DynamicDataObserver;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllCategories()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;
.end method

.method public abstract getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;
.end method
