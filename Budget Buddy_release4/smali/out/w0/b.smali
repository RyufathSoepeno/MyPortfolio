.class public final synthetic Lw0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/a$d;


# instance fields
.field public final synthetic a:Lw0/a$b;


# direct methods
.method public synthetic constructor <init>(Lw0/a$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/b;->a:Lw0/a$b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ls0/a$e;)V
    .registers 4

    iget-object v0, p0, Lw0/b;->a:Lw0/a$b;

    invoke-static {v0, p1, p2}, Lw0/h;->b(Lw0/a$b;Ljava/lang/Object;Ls0/a$e;)V

    return-void
.end method
