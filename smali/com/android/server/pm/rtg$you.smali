.class Lcom/android/server/pm/rtg$you;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/rtg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "you"
.end annotation


# static fields
.field static final zta:Lcom/android/server/pm/rtg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/pm/rtg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/pm/rtg;-><init>(Lcom/android/server/pm/rtg$zta;)V

    sput-object v0, Lcom/android/server/pm/rtg$you;->zta:Lcom/android/server/pm/rtg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
