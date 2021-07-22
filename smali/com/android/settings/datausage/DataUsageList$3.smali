.class Lcom/android/settings/datausage/DataUsageList$3;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataUsageList;->bindStats(Landroid/app/usage/NetworkStats;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageList;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0

    .line 542
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList$3;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 545
    move-object v0, p1

    check-cast v0, Lcom/android/settings/datausage/AppDataUsagePreference;

    .line 546
    invoke-virtual {v0}, Lcom/android/settings/datausage/AppDataUsagePreference;->getItem()Lcom/android/settingslib/AppItem;

    move-result-object v0

    .line 548
    iget v1, v0, Lcom/android/settingslib/AppItem;->key:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    const/4 v2, -0x4

    if-ne v1, v2, :cond_1

    .line 549
    :cond_0
    new-instance v1, Lcom/android/settingslib/net/UidDetail;

    invoke-direct {v1}, Lcom/android/settingslib/net/UidDetail;-><init>()V

    sput-object v1, Lcom/android/settings/datausage/AppDataUsage;->OSUidDetail:Lcom/android/settingslib/net/UidDetail;

    .line 550
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 551
    sget-object v1, Lcom/android/settings/datausage/AppDataUsage;->OSUidDetail:Lcom/android/settingslib/net/UidDetail;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v1, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 554
    :cond_1
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList$3;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageList;->startAppDataUsage(Lcom/android/settingslib/AppItem;)V

    const/4 p0, 0x1

    return p0
.end method
