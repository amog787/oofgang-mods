.class Lcom/oneplus/settings/notification/OPSystemVbrateSettings$1;
.super Landroid/os/Handler;
.source "OPSystemVbrateSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPSystemVbrateSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPSystemVbrateSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/OPSystemVbrateSettings;Landroid/os/Looper;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings$1;->this$0:Lcom/oneplus/settings/notification/OPSystemVbrateSettings;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 50
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    new-instance p1, Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings$1;->this$0:Lcom/oneplus/settings/notification/OPSystemVbrateSettings;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->access$000(Lcom/oneplus/settings/notification/OPSystemVbrateSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 54
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings$1;->this$0:Lcom/oneplus/settings/notification/OPSystemVbrateSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/notification/OPSystemVbrateSettings$1;->this$0:Lcom/oneplus/settings/notification/OPSystemVbrateSettings;

    .line 55
    invoke-static {p0}, Lcom/oneplus/settings/notification/OPSystemVbrateSettings;->access$100(Lcom/oneplus/settings/notification/OPSystemVbrateSettings;)I

    move-result p0

    const-string v0, "vibrate_on_touch_intensity"

    .line 54
    invoke-static {p1, v0, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method
