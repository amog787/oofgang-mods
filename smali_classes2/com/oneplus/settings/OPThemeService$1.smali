.class Lcom/oneplus/settings/OPThemeService$1;
.super Landroid/os/Handler;
.source "OPThemeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPThemeService;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPThemeService;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/oneplus/settings/OPThemeService$1;->this$0:Lcom/oneplus/settings/OPThemeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 31
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPThemeService$1;->this$0:Lcom/oneplus/settings/OPThemeService;

    invoke-static {v0}, Lcom/oneplus/settings/OPThemeService;->access$000(Lcom/oneplus/settings/OPThemeService;)V

    .line 34
    :cond_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
