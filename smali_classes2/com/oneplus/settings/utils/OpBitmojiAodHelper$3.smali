.class Lcom/oneplus/settings/utils/OpBitmojiAodHelper$3;
.super Ljava/lang/Object;
.source "OpBitmojiAodHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/utils/OpBitmojiAodHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/utils/OpBitmojiAodHelper;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/utils/OpBitmojiAodHelper;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/oneplus/settings/utils/OpBitmojiAodHelper$3;->this$0:Lcom/oneplus/settings/utils/OpBitmojiAodHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "android.intent.action.VIEW"

    .line 247
    iget-object v0, p0, Lcom/oneplus/settings/utils/OpBitmojiAodHelper$3;->this$0:Lcom/oneplus/settings/utils/OpBitmojiAodHelper;

    invoke-virtual {v0}, Lcom/oneplus/settings/utils/OpBitmojiAodHelper;->getBitmojiStatus()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x2

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/utils/OpBitmojiAodHelper$3;->this$0:Lcom/oneplus/settings/utils/OpBitmojiAodHelper;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OpBitmojiAodHelper;->access$100(Lcom/oneplus/settings/utils/OpBitmojiAodHelper;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/utils/OpBitmojiAodHelper$3;->this$0:Lcom/oneplus/settings/utils/OpBitmojiAodHelper;

    const-string v0, "*"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oneplus/settings/utils/OpBitmojiAodHelper;->access$000(Lcom/oneplus/settings/utils/OpBitmojiAodHelper;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "bitmojiDownload"

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_0

    .line 271
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.systemui/com.oneplus.aod.utils.bitmoji.OpBitmojiConnectedEntry"

    .line 272
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 274
    iget-object p0, p0, Lcom/oneplus/settings/utils/OpBitmojiAodHelper$3;->this$0:Lcom/oneplus/settings/utils/OpBitmojiAodHelper;

    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OpBitmojiAodHelper;->access$300(Lcom/oneplus/settings/utils/OpBitmojiAodHelper;Landroid/content/Intent;)V

    goto :goto_0

    .line 264
    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.bitstrips.imoji/.ui.LandingActivity"

    .line 265
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 267
    iget-object p0, p0, Lcom/oneplus/settings/utils/OpBitmojiAodHelper$3;->this$0:Lcom/oneplus/settings/utils/OpBitmojiAodHelper;

    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OpBitmojiAodHelper;->access$300(Lcom/oneplus/settings/utils/OpBitmojiAodHelper;Landroid/content/Intent;)V

    goto :goto_0

    .line 251
    :cond_3
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "market://details?id=com.bitstrips.imoji"

    .line 252
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 253
    iget-object v1, p0, Lcom/oneplus/settings/utils/OpBitmojiAodHelper$3;->this$0:Lcom/oneplus/settings/utils/OpBitmojiAodHelper;

    invoke-static {v1}, Lcom/oneplus/settings/utils/OpBitmojiAodHelper;->access$100(Lcom/oneplus/settings/utils/OpBitmojiAodHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    :catch_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 256
    iget-object p0, p0, Lcom/oneplus/settings/utils/OpBitmojiAodHelper$3;->this$0:Lcom/oneplus/settings/utils/OpBitmojiAodHelper;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "https://play.google.com/store/apps/details?id=com.bitstrips.imoji"

    .line 257
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 256
    invoke-static {p0, v0}, Lcom/oneplus/settings/utils/OpBitmojiAodHelper;->access$300(Lcom/oneplus/settings/utils/OpBitmojiAodHelper;Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void
.end method
