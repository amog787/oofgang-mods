.class public abstract Lcom/google/android/setupdesign/items/ReflectionInflater;
.super Lcom/google/android/setupdesign/items/SimpleInflater;
.source "ReflectionInflater.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/setupdesign/items/SimpleInflater<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final constructorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;

.field private defaultPackage:Ljava/lang/String;

.field private final tempConstructorArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 41
    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/setupdesign/items/ReflectionInflater;->CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/setupdesign/items/ReflectionInflater;->constructorMap:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/setupdesign/items/SimpleInflater;-><init>(Landroid/content/res/Resources;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 50
    iput-object v0, p0, Lcom/google/android/setupdesign/items/ReflectionInflater;->tempConstructorArgs:[Ljava/lang/Object;

    .line 64
    iput-object p1, p0, Lcom/google/android/setupdesign/items/ReflectionInflater;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final createItem(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/16 v0, 0x2e

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 84
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    .line 87
    :goto_0
    sget-object v0, Lcom/google/android/setupdesign/items/ReflectionInflater;->constructorMap:Ljava/util/HashMap;

    .line 88
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ReflectionInflater;->context:Landroid/content/Context;

    .line 95
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 96
    sget-object v2, Lcom/google/android/setupdesign/items/ReflectionInflater;->CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 98
    sget-object v2, Lcom/google/android/setupdesign/items/ReflectionInflater;->constructorMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_1
    iget-object p1, p0, Lcom/google/android/setupdesign/items/ReflectionInflater;->tempConstructorArgs:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/setupdesign/items/ReflectionInflater;->context:Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, p1, v3

    .line 102
    iget-object p1, p0, Lcom/google/android/setupdesign/items/ReflectionInflater;->tempConstructorArgs:[Ljava/lang/Object;

    aput-object p3, p1, v1

    .line 103
    iget-object p1, p0, Lcom/google/android/setupdesign/items/ReflectionInflater;->tempConstructorArgs:[Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 104
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ReflectionInflater;->tempConstructorArgs:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v0, v3

    .line 105
    iget-object p0, p0, Lcom/google/android/setupdesign/items/ReflectionInflater;->tempConstructorArgs:[Ljava/lang/Object;

    aput-object v2, p0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 108
    new-instance p1, Landroid/view/InflateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Error inflating class "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected onCreateItem(Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ReflectionInflater;->defaultPackage:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/setupdesign/items/ReflectionInflater;->createItem(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public setDefaultPackage(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/google/android/setupdesign/items/ReflectionInflater;->defaultPackage:Ljava/lang/String;

    return-void
.end method
