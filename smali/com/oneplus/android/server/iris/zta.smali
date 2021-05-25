.class public final synthetic Lcom/oneplus/android/server/iris/zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic zta:Lcom/oneplus/android/server/iris/OpIrisService;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/android/server/iris/OpIrisService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/android/server/iris/zta;->zta:Lcom/oneplus/android/server/iris/OpIrisService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/zta;->zta:Lcom/oneplus/android/server/iris/OpIrisService;

    check-cast p1, Landroid/os/PowerSaveState;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/iris/OpIrisService;->you(Landroid/os/PowerSaveState;)V

    return-void
.end method
