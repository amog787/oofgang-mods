.class Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge$2;
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

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    .line 130
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v0, :cond_1

    instance-of v0, v0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 133
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast p1, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;

    .line 137
    iget p1, p1, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->value:I

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    move p0, v0

    :cond_1
    :goto_0
    return p0
.end method

.method public init()V
    .locals 0

    return-void
.end method
