.class public Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HighUsageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHighUsageAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIconDrawableFactory:Landroid/util/IconDrawableFactory;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->mHighUsageAppList:Ljava/util/List;

    .line 63
    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->mHighUsageAppList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 39
    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->onBindViewHolder(Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;I)V
    .locals 5

    .line 76
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->mHighUsageAppList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    .line 77
    iget-object v0, p1, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p2, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    iget v4, p2, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->uid:I

    .line 79
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 78
    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->getBadgedIcon(Landroid/util/IconDrawableFactory;Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p2, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_0

    .line 82
    iget-object p0, p2, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    .line 85
    :cond_0
    iget-object p1, p1, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;
    .locals 1

    .line 69
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/android/settings/R$layout;->app_high_usage_item:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 71
    new-instance p1, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;

    invoke-direct {p1, p0}, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
