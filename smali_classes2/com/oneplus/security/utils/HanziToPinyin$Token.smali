.class public Lcom/oneplus/security/utils/HanziToPinyin$Token;
.super Ljava/lang/Object;
.source "HanziToPinyin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/security/utils/HanziToPinyin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# instance fields
.field public source:Ljava/lang/String;

.field public target:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    iput p1, p0, Lcom/oneplus/security/utils/HanziToPinyin$Token;->type:I

    .line 444
    iput-object p2, p0, Lcom/oneplus/security/utils/HanziToPinyin$Token;->source:Ljava/lang/String;

    .line 445
    iput-object p3, p0, Lcom/oneplus/security/utils/HanziToPinyin$Token;->target:Ljava/lang/String;

    return-void
.end method
