.class public Lcom/oneplus/utils/reflection/ClassReflection;
.super Ljava/lang/Object;
.source "ClassReflection.java"


# static fields
.field private static final DECLARED_CLASS_CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;-><init>(I)V

    sput-object v0, Lcom/oneplus/utils/reflection/ClassReflection;->DECLARED_CLASS_CACHE:Ljava/util/Map;

    .line 17
    new-instance v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;

    invoke-direct {v0, v1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;-><init>(I)V

    return-void
.end method

.method public static findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .line 21
    sget-object v0, Lcom/oneplus/utils/reflection/ClassReflection;->DECLARED_CLASS_CACHE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 24
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 25
    sget-object v1, Lcom/oneplus/utils/reflection/ClassReflection;->DECLARED_CLASS_CACHE:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 27
    invoke-static {p0}, Lcom/oneplus/utils/reflection/utils/ExceptionUtil;->handleReflectionException(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-object v0
.end method
