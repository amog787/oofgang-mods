.class Lcom/oneplus/settings/utils/OpBitmojiAodHelper$2;
.super Landroid/database/ContentObserver;
.source "OpBitmojiAodHelper.java"


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
.method constructor <init>(Lcom/oneplus/settings/utils/OpBitmojiAodHelper;Landroid/os/Handler;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/oneplus/settings/utils/OpBitmojiAodHelper$2;->this$0:Lcom/oneplus/settings/utils/OpBitmojiAodHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 238
    iget-object p1, p0, Lcom/oneplus/settings/utils/OpBitmojiAodHelper$2;->this$0:Lcom/oneplus/settings/utils/OpBitmojiAodHelper;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OpBitmojiAodHelper;->access$200(Lcom/oneplus/settings/utils/OpBitmojiAodHelper;)Lcom/oneplus/settings/utils/OpBitmojiAodHelper$OnBitmojiAvatarChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 239
    iget-object p0, p0, Lcom/oneplus/settings/utils/OpBitmojiAodHelper$2;->this$0:Lcom/oneplus/settings/utils/OpBitmojiAodHelper;

    invoke-static {p0}, Lcom/oneplus/settings/utils/OpBitmojiAodHelper;->access$200(Lcom/oneplus/settings/utils/OpBitmojiAodHelper;)Lcom/oneplus/settings/utils/OpBitmojiAodHelper$OnBitmojiAvatarChangedListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oneplus/settings/utils/OpBitmojiAodHelper$OnBitmojiAvatarChangedListener;->onBitmojiAvatarChanged()V

    :cond_0
    return-void
.end method
