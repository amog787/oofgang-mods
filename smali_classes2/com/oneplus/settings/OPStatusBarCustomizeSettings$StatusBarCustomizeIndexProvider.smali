.class Lcom/oneplus/settings/OPStatusBarCustomizeSettings$StatusBarCustomizeIndexProvider;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "OPStatusBarCustomizeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPStatusBarCustomizeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatusBarCustomizeIndexProvider"
.end annotation


# instance fields
.field mIsPrimary:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 130
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    .line 131
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings$StatusBarCustomizeIndexProvider;->mIsPrimary:Z

    return-void
.end method


# virtual methods
.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 137
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 139
    iget-boolean p0, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings$StatusBarCustomizeIndexProvider;->mIsPrimary:Z

    if-nez p0, :cond_0

    return-object p2

    .line 143
    :cond_0
    new-instance p0, Landroid/provider/SearchIndexableResource;

    invoke-direct {p0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 144
    sget p1, Lcom/android/settings/R$xml;->op_statusbar_customize_settings:I

    iput p1, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 145
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method
