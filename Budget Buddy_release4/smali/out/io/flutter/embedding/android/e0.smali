.class public final Lio/flutter/embedding/android/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/android/e0$a;
    }
.end annotation


# static fields
.field private static c:Lio/flutter/embedding/android/e0;


# instance fields
.field private final a:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/android/e0;->a:Landroid/util/LongSparseArray;

    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/android/e0;->b:Ljava/util/PriorityQueue;

    return-void
.end method

.method public static a()Lio/flutter/embedding/android/e0;
    .registers 1

    sget-object v0, Lio/flutter/embedding/android/e0;->c:Lio/flutter/embedding/android/e0;

    if-nez v0, :cond_b

    new-instance v0, Lio/flutter/embedding/android/e0;

    invoke-direct {v0}, Lio/flutter/embedding/android/e0;-><init>()V

    sput-object v0, Lio/flutter/embedding/android/e0;->c:Lio/flutter/embedding/android/e0;

    :cond_b
    sget-object v0, Lio/flutter/embedding/android/e0;->c:Lio/flutter/embedding/android/e0;

    return-object v0
.end method


# virtual methods
.method public b(Lio/flutter/embedding/android/e0$a;)Landroid/view/MotionEvent;
    .registers 7

    :goto_0
    iget-object v0, p0, Lio/flutter/embedding/android/e0;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lio/flutter/embedding/android/e0;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1}, Lio/flutter/embedding/android/e0$a;->a(Lio/flutter/embedding/android/e0$a;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_2e

    iget-object v0, p0, Lio/flutter/embedding/android/e0;->a:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lio/flutter/embedding/android/e0;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->remove(J)V

    goto :goto_0

    :cond_2e
    iget-object v0, p0, Lio/flutter/embedding/android/e0;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lio/flutter/embedding/android/e0;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1}, Lio/flutter/embedding/android/e0$a;->a(Lio/flutter/embedding/android/e0$a;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_4f

    iget-object v0, p0, Lio/flutter/embedding/android/e0;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    :cond_4f
    iget-object v0, p0, Lio/flutter/embedding/android/e0;->a:Landroid/util/LongSparseArray;

    invoke-static {p1}, Lio/flutter/embedding/android/e0$a;->a(Lio/flutter/embedding/android/e0$a;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    iget-object v1, p0, Lio/flutter/embedding/android/e0;->a:Landroid/util/LongSparseArray;

    invoke-static {p1}, Lio/flutter/embedding/android/e0$a;->a(Lio/flutter/embedding/android/e0$a;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    return-object v0
.end method

.method public c(Landroid/view/MotionEvent;)Lio/flutter/embedding/android/e0$a;
    .registers 6

    invoke-static {}, Lio/flutter/embedding/android/e0$a;->b()Lio/flutter/embedding/android/e0$a;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/e0;->a:Landroid/util/LongSparseArray;

    invoke-static {v0}, Lio/flutter/embedding/android/e0$a;->a(Lio/flutter/embedding/android/e0$a;)J

    move-result-wide v2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {v1, v2, v3, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object p1, p0, Lio/flutter/embedding/android/e0;->b:Ljava/util/PriorityQueue;

    invoke-static {v0}, Lio/flutter/embedding/android/e0$a;->a(Lio/flutter/embedding/android/e0$a;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
