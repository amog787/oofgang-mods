.class Lcom/oneplus/settings/utils/OPZenModeUtils$1;
.super Ljava/lang/Object;
.source "OPZenModeUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/utils/OPZenModeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/utils/OPZenModeUtils;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/utils/OPZenModeUtils;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/oneplus/settings/utils/OPZenModeUtils$1;->this$0:Lcom/oneplus/settings/utils/OPZenModeUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oneplus/settings/utils/OPZenModeUtils$1;->this$0:Lcom/oneplus/settings/utils/OPZenModeUtils;

    invoke-virtual {p0}, Lcom/oneplus/settings/utils/OPZenModeUtils;->sendAppTracker()V

    return-void
.end method
