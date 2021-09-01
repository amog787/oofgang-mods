.class Lcom/android/settings/DisplaySettings$1;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DisplaySettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplaySettings;Landroid/content/Context;)V
    .locals 0

    .line 515
    iput-object p2, p0, Lcom/android/settings/DisplaySettings$1;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 518
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 519
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    .line 520
    iget-object p0, p0, Lcom/android/settings/DisplaySettings$1;->val$c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "vr_display_mode"

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "DisplaySettings"

    const-string p1, "Could not change setting for vr_display_mode"

    .line 523
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
