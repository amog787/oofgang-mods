.class public Landroidx/lifecycle/ViewModelProviders;
.super Ljava/lang/Object;
.source "ViewModelProviders.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    return-object v0
.end method
