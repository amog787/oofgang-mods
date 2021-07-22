.class Lcom/oneplus/settings/better/OPScreenColorMode$1;
.super Landroid/database/ContentObserver;
.source "OPScreenColorMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/better/OPScreenColorMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPScreenColorMode;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPScreenColorMode;Landroid/os/Handler;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode$1;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/oneplus/settings/better/OPScreenColorMode$1;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    invoke-static {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->access$000(Lcom/oneplus/settings/better/OPScreenColorMode;)V

    return-void
.end method
