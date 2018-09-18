/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_wstr.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: smbonan <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/08/02 15:13:35 by smbonan           #+#    #+#             */
/*   Updated: 2018/08/16 11:35:50 by smbonan          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int							ft_print_wstr(wchar_t *wstr, int precision)
{
	int						res;

	res = 0;
	if (wstr == NULL)
		return (ft_print_str("(null)", precision));
	while (*wstr != '\0')
	{
		res += ft_print_wchar(*wstr);
		wstr++;
	}
	return (res);
}
