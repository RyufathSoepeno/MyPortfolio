.class Landroidx/core/content/a$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method static a(Landroid/content/Context;)Ljava/util/concurrent/Executor;
    .registers 1

    invoke-static {p0}, Landroidx/core/content/d;->a(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method
