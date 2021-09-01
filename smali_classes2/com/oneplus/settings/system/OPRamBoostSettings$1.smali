.class Lcom/oneplus/settings/system/OPRamBoostSettings$1;
.super Ljava/lang/Object;
.source "OPRamBoostSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/system/OPRamBoostSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/system/OPRamBoostSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/system/OPRamBoostSettings;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/oneplus/settings/system/OPRamBoostSettings$1;->this$0:Lcom/oneplus/settings/system/OPRamBoostSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 45
    check-cast p2, Ljava/lang/Boolean;

    .line 46
    iget-object p0, p0, Lcom/oneplus/settings/system/OPRamBoostSettings$1;->this$0:Lcom/oneplus/settings/system/OPRamBoostSettings;

    invoke-static {p0}, Lcom/oneplus/settings/system/OPRamBoostSettings;->access$000(Lcom/oneplus/settings/system/OPRamBoostSettings;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/oneplus/settings/system/OPRamBoostSettings;->setRamBoostState(Landroid/content/Context;Z)V

    .line 47
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    const-string p1, "ramboost"

    const-string p2, "status"

    invoke-static {p1, p2, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
