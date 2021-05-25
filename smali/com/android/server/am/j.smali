.class public Lcom/android/server/am/j;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static cno:Lcom/android/server/am/j; = null

.field private static final rtg:I = 0x8

.field private static final ssp:I = 0x4650


# instance fields
.field protected sis:I

.field protected tsu:I

.field private you:Landroid/os/Handler;

.field private zta:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/j;->zta:Landroid/content/Context;

    sget-object p1, Lcom/android/server/am/lqr;->s:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/am/j;->you:Landroid/os/Handler;

    return-void
.end method

.method public static zta(Landroid/content/Context;)Lcom/android/server/am/j;
    .locals 1

    sget-object v0, Lcom/android/server/am/j;->cno:Lcom/android/server/am/j;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/android/server/am/j;

    invoke-direct {v0, p0}, Lcom/android/server/am/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/am/j;->cno:Lcom/android/server/am/j;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    sget-object p0, Lcom/android/server/am/j;->cno:Lcom/android/server/am/j;

    return-object p0
.end method
