.class public Lcom/oneplus/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static sCurrentVersion:Ljava/lang/String; = null

.field private static sDefaultWrapper:Ljava/lang/String; = "10.11.0"

.field private static sIsWrapperChecked:Z = false

.field private static sIsWrapperExist:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static isWrapperSupport()Z
    .locals 2

    .line 42
    sget-boolean v0, Lcom/oneplus/utils/Utils;->sIsWrapperChecked:Z

    if-eqz v0, :cond_0

    .line 43
    sget-boolean v0, Lcom/oneplus/utils/Utils;->sIsWrapperExist:Z

    return v0

    .line 45
    :cond_0
    sget-object v0, Lcom/oneplus/utils/Utils;->sDefaultWrapper:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/utils/Utils;->isWrapperSupport(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/utils/Utils;->sIsWrapperExist:Z

    const/4 v1, 0x1

    .line 46
    sput-boolean v1, Lcom/oneplus/utils/Utils;->sIsWrapperChecked:Z

    return v0
.end method

.method public static isWrapperSupport(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "\\."

    const-string v1, "android.os.SystemProperties"

    .line 69
    invoke-static {v1}, Lcom/oneplus/utils/reflection/ClassReflection;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 80
    sget-object v2, Lcom/oneplus/utils/Utils;->sCurrentVersion:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    new-array v2, v3, [Ljava/lang/Class;

    .line 81
    const-class v5, Ljava/lang/String;

    aput-object v5, v2, v4

    const-string v5, "get"

    .line 82
    invoke-static {v1, v5, v2}, Lcom/oneplus/utils/reflection/MethodReflection;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "ro.sys.oneplus.support"

    aput-object v6, v5, v4

    .line 81
    invoke-static {v1, v2, v5}, Lcom/oneplus/utils/reflection/MethodReflection;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/oneplus/utils/Utils;->sCurrentVersion:Ljava/lang/String;

    .line 85
    :cond_0
    sget-object v1, Lcom/oneplus/utils/Utils;->sCurrentVersion:Ljava/lang/String;

    const-string v2, ""

    if-ne v1, v2, :cond_1

    return v4

    .line 90
    :cond_1
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 91
    sget-object v1, Lcom/oneplus/utils/Utils;->sCurrentVersion:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move v1, v4

    .line 93
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_3

    array-length v2, v0

    if-ge v1, v2, :cond_2

    goto :goto_1

    :cond_2
    return v3

    .line 94
    :cond_3
    :goto_1
    array-length v2, p0

    if-lt v1, v2, :cond_6

    array-length v2, v0

    if-ge v1, v2, :cond_4

    goto :goto_2

    .line 100
    :cond_4
    array-length v2, p0

    if-ge v1, v2, :cond_5

    return v4

    .line 102
    :cond_5
    array-length v2, v0

    if-ge v1, v2, :cond_8

    return v3

    .line 95
    :cond_6
    :goto_2
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v5, p0, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ge v2, v5, :cond_7

    return v4

    .line 97
    :cond_7
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v5, p0, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-le v2, v5, :cond_8

    return v3

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    return v4
.end method
