.class public Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorDisable;
.super Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/display/OpOIMCColorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColorDisable"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/oneplus/android/server/display/OpOIMCColorManager;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/display/OpOIMCColorManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorDisable;->this$0:Lcom/oneplus/android/server/display/OpOIMCColorManager;

    invoke-direct {p0}, Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;-><init>()V

    iput-object p2, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorDisable;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onConfig(Ljava/lang/String;)I
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ColorDisable config...string = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpOIMCColorManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public onStart([Ljava/lang/String;)I
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ColorDisable start... mCurrentActivated = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorDisable;->this$0:Lcom/oneplus/android/server/display/OpOIMCColorManager;

    iget v0, v0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->dma:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpOIMCColorManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorDisable;->this$0:Lcom/oneplus/android/server/display/OpOIMCColorManager;

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->dma:I

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->kth:Lcom/oneplus/display/IOneplusColorDisplayManager;

    invoke-interface {p0, p1}, Lcom/oneplus/display/IOneplusColorDisplayManager;->disableColor(I)V

    const-class p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->cancelAnimation()V

    goto :goto_0

    :cond_0
    const-string p0, "mCdsi == null"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return p1
.end method

.method public onStop([Ljava/lang/String;)I
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ColorDisable stop... mGCActivated = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorDisable;->this$0:Lcom/oneplus/android/server/display/OpOIMCColorManager;

    invoke-static {v0}, Lcom/oneplus/android/server/display/OpOIMCColorManager;->sis(Lcom/oneplus/android/server/display/OpOIMCColorManager;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "  mCBActivated = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorDisable;->this$0:Lcom/oneplus/android/server/display/OpOIMCColorManager;

    invoke-static {v0}, Lcom/oneplus/android/server/display/OpOIMCColorManager;->zta(Lcom/oneplus/android/server/display/OpOIMCColorManager;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "  mPCActivated = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorDisable;->this$0:Lcom/oneplus/android/server/display/OpOIMCColorManager;

    invoke-static {v0}, Lcom/oneplus/android/server/display/OpOIMCColorManager;->rtg(Lcom/oneplus/android/server/display/OpOIMCColorManager;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "  mGMActivated = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorDisable;->this$0:Lcom/oneplus/android/server/display/OpOIMCColorManager;

    invoke-static {v0}, Lcom/oneplus/android/server/display/OpOIMCColorManager;->cno(Lcom/oneplus/android/server/display/OpOIMCColorManager;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mCurrentActivated = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorDisable;->this$0:Lcom/oneplus/android/server/display/OpOIMCColorManager;

    iget v0, v0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->dma:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpOIMCColorManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorDisable;->this$0:Lcom/oneplus/android/server/display/OpOIMCColorManager;

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->kth:Lcom/oneplus/display/IOneplusColorDisplayManager;

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lcom/oneplus/display/IOneplusColorDisplayManager;->disableColor(I)V

    const/4 p0, 0x0

    return p0
.end method
