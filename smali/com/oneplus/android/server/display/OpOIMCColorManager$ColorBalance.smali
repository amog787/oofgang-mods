.class public Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorBalance;
.super Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/display/OpOIMCColorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColorBalance"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/oneplus/android/server/display/OpOIMCColorManager;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/display/OpOIMCColorManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorBalance;->this$0:Lcom/oneplus/android/server/display/OpOIMCColorManager;

    invoke-direct {p0}, Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;-><init>()V

    iput-object p2, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorBalance;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onConfig(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    const-string p0, "OpOIMCColorManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorBlance config...string = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public onStart([Ljava/lang/String;)I
    .locals 3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ColorBlance start... mCurrentActivated = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorBalance;->this$0:Lcom/oneplus/android/server/display/OpOIMCColorManager;

    iget v0, v0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->dma:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpOIMCColorManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorBalance;->this$0:Lcom/oneplus/android/server/display/OpOIMCColorManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oneplus/android/server/display/OpOIMCColorManager;->you(Lcom/oneplus/android/server/display/OpOIMCColorManager;Z)Z

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorBalance;->this$0:Lcom/oneplus/android/server/display/OpOIMCColorManager;

    iget v1, p1, Lcom/oneplus/android/server/display/OpOIMCColorManager;->dma:I

    if-eqz v1, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object p1, p1, Lcom/oneplus/android/server/display/OpOIMCColorManager;->kth:Lcom/oneplus/display/IOneplusColorDisplayManager;

    invoke-interface {p1}, Lcom/oneplus/display/IOneplusColorDisplayManager;->setPaperColor2ColorBalance()V

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object p1, p1, Lcom/oneplus/android/server/display/OpOIMCColorManager;->kth:Lcom/oneplus/display/IOneplusColorDisplayManager;

    invoke-interface {p1}, Lcom/oneplus/display/IOneplusColorDisplayManager;->setGrayColor2ColorBalance()V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorBalance;->this$0:Lcom/oneplus/android/server/display/OpOIMCColorManager;

    iget-object p1, p1, Lcom/oneplus/android/server/display/OpOIMCColorManager;->kth:Lcom/oneplus/display/IOneplusColorDisplayManager;

    invoke-interface {p1, v0}, Lcom/oneplus/display/IOneplusColorDisplayManager;->setColorBalanceActivated(Z)V

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorBalance;->this$0:Lcom/oneplus/android/server/display/OpOIMCColorManager;

    iput v0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->dma:I

    const/4 p0, 0x0

    return p0
.end method

.method public onStop([Ljava/lang/String;)I
    .locals 3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ColorBlance stop... mCurrentActivated = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorBalance;->this$0:Lcom/oneplus/android/server/display/OpOIMCColorManager;

    iget v0, v0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->dma:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpOIMCColorManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorBalance;->this$0:Lcom/oneplus/android/server/display/OpOIMCColorManager;

    iget v0, p1, Lcom/oneplus/android/server/display/OpOIMCColorManager;->dma:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-static {p1, v1}, Lcom/oneplus/android/server/display/OpOIMCColorManager;->you(Lcom/oneplus/android/server/display/OpOIMCColorManager;Z)Z

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorBalance;->this$0:Lcom/oneplus/android/server/display/OpOIMCColorManager;

    iget-object p1, p1, Lcom/oneplus/android/server/display/OpOIMCColorManager;->kth:Lcom/oneplus/display/IOneplusColorDisplayManager;

    invoke-interface {p1, v1}, Lcom/oneplus/display/IOneplusColorDisplayManager;->setColorBalanceActivated(Z)V

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorBalance;->this$0:Lcom/oneplus/android/server/display/OpOIMCColorManager;

    iput v1, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->dma:I

    :cond_0
    return v1
.end method
