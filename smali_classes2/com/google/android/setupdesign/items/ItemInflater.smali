.class public Lcom/google/android/setupdesign/items/ItemInflater;
.super Lcom/google/android/setupdesign/items/ReflectionInflater;
.source "ItemInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/items/ItemInflater$ItemParent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/setupdesign/items/ReflectionInflater<",
        "Lcom/google/android/setupdesign/items/ItemHierarchy;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/items/ReflectionInflater;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/google/android/setupdesign/items/Item;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/items/ReflectionInflater;->setDefaultPackage(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onAddChildItem(Lcom/google/android/setupdesign/items/ItemHierarchy;Lcom/google/android/setupdesign/items/ItemHierarchy;)V
    .locals 1

    .line 35
    instance-of p0, p1, Lcom/google/android/setupdesign/items/ItemInflater$ItemParent;

    if-eqz p0, :cond_0

    .line 36
    check-cast p1, Lcom/google/android/setupdesign/items/ItemInflater$ItemParent;

    invoke-interface {p1, p2}, Lcom/google/android/setupdesign/items/ItemInflater$ItemParent;->addChild(Lcom/google/android/setupdesign/items/ItemHierarchy;)V

    return-void

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot add child item to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected bridge synthetic onAddChildItem(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/google/android/setupdesign/items/ItemHierarchy;

    check-cast p2, Lcom/google/android/setupdesign/items/ItemHierarchy;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/setupdesign/items/ItemInflater;->onAddChildItem(Lcom/google/android/setupdesign/items/ItemHierarchy;Lcom/google/android/setupdesign/items/ItemHierarchy;)V

    return-void
.end method
