.class final Lcom/google/common/base/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Platform$JdkPatternCompiler;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/google/common/base/Platform;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 34
    invoke-static {}, Lcom/google/common/base/Platform;->loadPatternCompiler()Lcom/google/common/base/PatternCompiler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static loadPatternCompiler()Lcom/google/common/base/PatternCompiler;
    .locals 2

    .line 84
    new-instance v0, Lcom/google/common/base/Platform$JdkPatternCompiler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/Platform$JdkPatternCompiler;-><init>(Lcom/google/common/base/Platform$1;)V

    return-object v0
.end method

.method static systemNanoTime()J
    .locals 2

    .line 41
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
