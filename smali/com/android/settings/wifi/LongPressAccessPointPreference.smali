.class public Lcom/android/settings/wifi/LongPressAccessPointPreference;
.super Lcom/android/settingslib/wifi/AccessPointPreference;
.source "LongPressAccessPointPreference.java"


# instance fields
.field private final mFragment:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;ZILandroidx/fragment/app/Fragment;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p4

    .line 38
    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/wifi/AccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;IZ)V

    .line 39
    iput-object p6, p0, Lcom/android/settings/wifi/LongPressAccessPointPreference;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 44
    invoke-super {p0, p1}, Lcom/android/settingslib/wifi/AccessPointPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 45
    iget-object v0, p0, Lcom/android/settings/wifi/LongPressAccessPointPreference;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 46
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 47
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 48
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    :cond_0
    return-void
.end method
