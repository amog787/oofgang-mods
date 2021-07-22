.class public Lcom/oneplus/custom/utils/MyLog;
.super Ljava/lang/Object;
.source "MyLog.java"


# static fields
.field protected static final DBG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.sys.assert.panic"

    .line 25
    invoke-static {v0}, Lcom/oneplus/compat/os/SystemPropertiesNative;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/custom/utils/MyLog;->DBG:Z

    return-void
.end method

.method protected static err(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 47
    sget-boolean v0, Lcom/oneplus/custom/utils/MyLog;->DBG:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected static verb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 27
    sget-boolean v0, Lcom/oneplus/custom/utils/MyLog;->DBG:Z

    if-eqz v0, :cond_0

    .line 28
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 42
    sget-boolean v0, Lcom/oneplus/custom/utils/MyLog;->DBG:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
