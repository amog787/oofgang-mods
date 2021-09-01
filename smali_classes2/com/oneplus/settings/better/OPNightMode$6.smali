.class Lcom/oneplus/settings/better/OPNightMode$6;
.super Landroid/database/ContentObserver;
.source "OPNightMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/better/OPNightMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final grayscaleUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/settings/better/OPNightMode;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPNightMode;Landroid/os/Handler;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/oneplus/settings/better/OPNightMode$6;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "accessibility_display_grayscale_enabled"

    .line 474
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/better/OPNightMode$6;->grayscaleUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    .line 477
    iget-object p1, p0, Lcom/oneplus/settings/better/OPNightMode$6;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {p1}, Lcom/oneplus/settings/better/OPNightMode;->access$400(Lcom/oneplus/settings/better/OPNightMode;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "oem_nightmode_brightness_progress"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 479
    iget-object p1, p0, Lcom/oneplus/settings/better/OPNightMode$6;->grayscaleUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 480
    iget-object p0, p0, Lcom/oneplus/settings/better/OPNightMode$6;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {p0}, Lcom/oneplus/settings/better/OPNightMode;->access$500(Lcom/oneplus/settings/better/OPNightMode;)V

    .line 483
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForEffectStrength()V

    return-void
.end method
