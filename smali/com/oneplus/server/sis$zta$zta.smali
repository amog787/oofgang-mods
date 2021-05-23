.class Lcom/oneplus/server/sis$zta$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/server/sis$zta;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sis:Lcom/oneplus/server/sis$zta;

.field final synthetic you:I

.field final synthetic zta:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/oneplus/server/sis$zta;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/sis$zta$zta;->sis:Lcom/oneplus/server/sis$zta;

    iput-object p2, p0, Lcom/oneplus/server/sis$zta$zta;->zta:Landroid/content/Context;

    iput p3, p0, Lcom/oneplus/server/sis$zta$zta;->you:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/sis$zta$zta;->zta:Landroid/content/Context;

    iget p0, p0, Lcom/oneplus/server/sis$zta$zta;->you:I

    invoke-static {v0, p0}, Lcom/oneplus/server/sis;->zta(Landroid/content/Context;I)V

    return-void
.end method
