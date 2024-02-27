.class public final Lq0/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final b:Lq0/a$d;

.field public final c:Lq0/a$c;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Lq0/a$d;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq0/a$b;->a:Landroid/graphics/Rect;

    iput-object p2, p0, Lq0/a$b;->b:Lq0/a$d;

    sget-object p1, Lq0/a$c;->f:Lq0/a$c;

    iput-object p1, p0, Lq0/a$b;->c:Lq0/a$c;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Lq0/a$d;Lq0/a$c;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq0/a$b;->a:Landroid/graphics/Rect;

    iput-object p2, p0, Lq0/a$b;->b:Lq0/a$d;

    iput-object p3, p0, Lq0/a$b;->c:Lq0/a$c;

    return-void
.end method
