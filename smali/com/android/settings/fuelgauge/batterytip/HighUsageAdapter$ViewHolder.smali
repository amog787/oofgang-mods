.class public Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HighUsageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public appIcon:Landroid/widget/ImageView;

.field public appName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 54
    sget v0, Lcom/android/settings/R$id;->app_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 55
    sget v0, Lcom/android/settings/R$id;->app_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    .line 56
    sget p0, Lcom/android/settings/R$id;->app_screen_time:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-void
.end method
