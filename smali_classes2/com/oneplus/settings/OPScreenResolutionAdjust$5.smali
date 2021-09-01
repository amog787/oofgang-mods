.class Lcom/oneplus/settings/OPScreenResolutionAdjust$5;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "OPScreenResolutionAdjust.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPScreenResolutionAdjust;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 505
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 518
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string p1, "ro.boot.project_name"

    .line 520
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "19811"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "op_other_resolution_mode"

    .line 521
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "op_1080p_mode"

    .line 522
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, "op_other_resolution_mode_19811"

    .line 524
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "op_1080p_mode_19811"

    .line 525
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p0
.end method

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

    .line 507
    new-instance p0, Landroid/provider/SearchIndexableResource;

    invoke-direct {p0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 509
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isSupportMultiScreenResolution(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 510
    sget p1, Lcom/android/settings/R$xml;->op_screen_resolution_adjust_select:I

    iput p1, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Landroid/provider/SearchIndexableResource;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    .line 513
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
