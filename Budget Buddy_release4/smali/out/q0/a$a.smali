.class Lq0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq0/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lq0/a;


# direct methods
.method constructor <init>(Lq0/a;)V
    .registers 2

    iput-object p1, p0, Lq0/a$a;->a:Lq0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .registers 3

    iget-object v0, p0, Lq0/a$a;->a:Lq0/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lq0/a;->b(Lq0/a;Z)Z

    return-void
.end method

.method public i()V
    .registers 3

    iget-object v0, p0, Lq0/a$a;->a:Lq0/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lq0/a;->b(Lq0/a;Z)Z

    return-void
.end method
