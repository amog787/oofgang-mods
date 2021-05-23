.class public abstract Lcom/oneplus/android/server/heytapbusiness/tsu/zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/heytapbusiness/you;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/oneplus/android/server/heytapbusiness/you;"
    }
.end annotation


# static fields
.field protected static final sis:Ljava/lang/String; = "miniprogram"

.field protected static final tsu:I = 0x14

.field protected static final you:Ljava/lang/String; = "com.nearme.instant.platform"


# instance fields
.field protected zta:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/heytapbusiness/tsu/zta;->zta:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public abstract rtg(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TT;"
        }
    .end annotation
.end method

.method public abstract sis()Ljava/lang/String;
.end method

.method public abstract ssp(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation
.end method

.method public varargs abstract tsu(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TT;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract you(Ljava/io/PrintWriter;)V
.end method

.method public varargs abstract zta(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TT;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
