.class Lcom/oneplus/settings/better/OPSuwScreenColorMode$1;
.super Landroid/os/Handler;
.source "OPSuwScreenColorMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/better/OPSuwScreenColorMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$1;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 91
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 92
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$1;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    const-string p1, "screen_color_mode_dci_p3_settings"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->scrollToPreference(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
