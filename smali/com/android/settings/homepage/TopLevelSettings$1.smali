.class Lcom/android/settings/homepage/TopLevelSettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "TopLevelSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/TopLevelSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 148
    invoke-direct {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
