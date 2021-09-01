.class Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge$1;
.super Ljava/lang/Object;
.source "AppBgOptimizeBridge.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 118
    :cond_0
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->access$000()Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->needShown(Ljava/lang/String;Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;)Z

    move-result p0

    return p0
.end method

.method public init()V
    .locals 0

    return-void
.end method
