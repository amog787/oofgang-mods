.class public interface abstract Lcom/google/android/setupdesign/items/ItemHierarchy;
.super Ljava/lang/Object;
.source "ItemHierarchy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/items/ItemHierarchy$Observer;
    }
.end annotation


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getItemAt(I)Lcom/google/android/setupdesign/items/IItem;
.end method

.method public abstract registerObserver(Lcom/google/android/setupdesign/items/ItemHierarchy$Observer;)V
.end method
